import React from 'react';
import { connect } from 'react-redux';
import { login } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import SessionForm from './session_form';

const mapStateToProps = state => ({
  errors: state.errors,
  formType: "Log In"
})

const mapDispatchToProps = dispatch => ({
  processForm: user => dispatch(login(user)),
  otherForm: (
    <button onClick={() => dispatch(openModal('Sign Up'))}>
      Sign up
    </button>
  ),
  closeModal: () => dispatch(closeModal())
})

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);